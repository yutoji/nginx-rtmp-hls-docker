# nginx-rtmp-hls-docker
Docker image with Nginx using the nginx-rtmp-module module for live multimedia (video) streaming and web client to check the streaming on your browser by using HLS and video.js.

## How to use

1. Build the image

    ```docker build -t nginx-rtmp-hls .```

2. Run a container

    ```docker run -p 80:80 -p 1935:1935 -d -it nginx-rtmp-hls```

3. Start casting via streaming software like [OBS](https://obsproject.com)

    Set ``rtmp://0.0.0.0:1935/live`` as "URL" and ``test`` as "Stream key".

4. Wait 45 seconds that is general delay time of HLS :)

5. Open web browser and access to:

    ```http://0.0.0.0/```
    
    or open HLS file directory via:
    
    ```http://0.0.0.0/hls/test.m3u8```

## Screenshot
![Web client and OBS](https://user-images.githubusercontent.com/43261614/46710499-0f0b9700-cc83-11e8-9310-154713dff850.png)
