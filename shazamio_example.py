import asyncio
from shazamio import Shazam

async def recognize_song(audio_file):
    shazam = Shazam()
    out = await shazam.recognize_song(audio_file)
    if out:
        print(f"Название: {out['track']['title']}")
        print(f"Артист: {out['track']['subtitle']}")
    else:
        print("Не распознано.")

asyncio.run(recognize_song("path/to/your/audio.mp3"))  # Замените на реальный файл
