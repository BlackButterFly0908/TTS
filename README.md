# Chatterbox TTS RunPod Service

A serverless Text-to-Speech (TTS) service built with Chatterbox TTS for deployment on RunPod.

## Features

- High-quality text-to-speech synthesis using Chatterbox TTS
- Optional voice cloning with audio prompts
- Base64 encoded audio output for easy integration
- Dockerized for easy deployment
- GPU acceleration support with CPU fallback

## Setup

### Local Development

1. Install dependencies:
```bash
pip install -r requirements.txt
```

2. Run the handler:
```bash
python handler.py
```

### Docker Deployment

1. Build the Docker image:
```bash
docker build -t chatterbox-tts .
```

2. Run the container:
```bash
docker run -p 8000:8000 chatterbox-tts
```

## Usage

The service accepts POST requests with the following input format:

```json
{
  "input": {
    "text": "Hello from Chatterbox TTS",
    "audio_prompt_path": "path/to/voice/prompt.wav" // optional
  }
}
```

Response format:

```json
{
  "text": "Hello from Chatterbox TTS",
  "audio_base64": "base64_encoded_audio_data",
  "sample_rate": 24000,
  "success": true
}
```

## Dependencies

- Python 3.11+
- PyTorch
- Chatterbox TTS
- RunPod SDK
- Audio processing libraries (soundfile, librosa, etc.)

## License

MIT License
