"""Sample service."""
import os
from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def index():
    """Index endpoint."""

    return {"message": os.environ.get("FOO", "")}
