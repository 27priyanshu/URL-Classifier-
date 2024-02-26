from fastapi import Depends, FastAPI
from pydantic import BaseModel

from .predictor.phishing_predictor import BERTPhishing, get_bert

app = FastAPI(swagger_ui_parameters={"syntaxHighlight.theme": "obsidian"})

class PhishingRequest(BaseModel):
    text : str

class PhishingResponse(BaseModel):
    prediction: str

@app.post("/predict_url", response_model=PhishingResponse)
def predict(request: PhishingRequest, model: BERTPhishing = Depends(get_bert)):
    prediction = model.predict_url(request.text)
    return PhishingResponse(
        prediction = prediction
    )

@app.post("/predict_message", response_model=PhishingResponse)
def predict(request: PhishingRequest, model: BERTPhishing = Depends(get_bert)):
    prediction = model.predict_message(request.text)
    return PhishingResponse(
        prediction = prediction
    )
