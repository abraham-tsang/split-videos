# split-videos
Split videos into 5 minute chunks.

## Installation
1. Clone this repo
```bash
git clone https://github.com/abraham-tsang/split-videos.git
```
2. Install dependencies ffmpeg and ffprobe in 1 package from https://ffmpeg.org/download.html

## Usage
1. Put mp4 files into repo
2. Use the following command to split
```bash
./split.sh
```
3. Receive folders, where each correspond to original mp4 file with the same name, inside are 5 minute video chunks of the original file.

## License
This project is licensed under the [MIT License](LICENSE).
