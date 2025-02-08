"""Sample service."""
from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def index():
    """Index endpoint."""

    return {"message": "Hello World"}
