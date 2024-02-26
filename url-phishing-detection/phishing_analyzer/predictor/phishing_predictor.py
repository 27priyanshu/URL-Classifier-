import json
# with open("C:\\Work\\Cyber Hackathon USAR\\url-phishing-detection\\assets\\config.json") as json_file:
#     config = json.load(json_file)

from transformers import AutoTokenizer, AutoModelForSequenceClassification
import torch
import torch.nn.functional as F
import re

class BERTPhishing():

    def __init__(self):
        # If loaded model locally 
        self.tokenizer = AutoTokenizer.from_pretrained(
             "C:\\Work\\Cyber Hackathon USAR\\Bert\\assets")
        self.model = AutoModelForSequenceClassification.from_pretrained(
            "C:\\Work\\Cyber Hackathon USAR\\Bert\\assets")

        # If loaded from HF
        # self.tokenizer = AutoTokenizer.from_pretrained(
        #      "ealvaradob/bert-finetuned-phishing")
        # self.model = AutoModelForSequenceClassification.from_pretrained(
        #     "ealvaradob/bert-finetuned-phishing")

    def predict_url(self, url):
        # Preprocess the URL
        normalized_url = re.sub(r"^https?://", "", url)
        normalized_url = re.sub(r":\d+", "", normalized_url)
        normalized_url = re.sub(r"\?\S+$", "", normalized_url)

        features = [
            1 if "http" in normalized_url else 0,  # Check if HTTP (non-secure)
            len(normalized_url.split(".")),  # Number of subdomains
            normalized_url.count("-"),  # Number of hyphens
            normalized_url.count("_"),  # Number of underscores
            1 if "login" in normalized_url else 0,  # Presence of "login" keyword
            1 if "secure" in normalized_url else 0,  # Presence of "secure" keyword
            1 if re.search(r"[^\w\-_]", normalized_url) else 0  # Presence of unusual characters
        ]

        # Tokenize and encode the URL text
        encoded_inputs = self.tokenizer(normalized_url.lower(), padding="max_length", truncation=True, return_tensors="pt")

        # Make inference using the model
        outputs = self.model(**encoded_inputs)
        probs = outputs.logits.softmax(-1)

        # Determine threshold and make prediction
        threshold = 0.7  # Adjust based on model performance and risk tolerance
        if probs[0, 1] > threshold:  # Assuming index 0 is "Phishing"
            return "Suspicious"
        else:
            return "Safe"
         
    def predict_message(self, text):
        text = text.lower()
         # Optional if punctuation was removed during training:
        punctuation = "!\"#$%&()*+,-./:;<=>?@[\\]^_`{|}~'"
        text = "".join(c for c in text if c not in punctuation)

        encoded_inputs = self.tokenizer(text, padding="max_length", truncation=True, return_tensors="pt")

        attention_mask = encoded_inputs["attention_mask"]

        outputs = self.model(**encoded_inputs)

        probs = outputs.logits.softmax(-1)

        threshold = 0.7  # Adjust based on model performance and risk tolerance
        if probs[0, 1] > threshold:  # Assuming index 0 is "Phishing"
            return "Suspicious"
        else:
            return "Safe"
        
    

bert = BERTPhishing()

def get_bert():
    return bert