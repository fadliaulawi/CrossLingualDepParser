curl -d "client_id=282431424157-p5485pk13cu8fhutuv32c8i4ke5f3t35.apps.googleusercontent.com&scope=https://www.googleapis.com/auth/drive.file" https://oauth2.googleapis.com/device/code

curl -d client_id=282431424157-p5485pk13cu8fhutuv32c8i4ke5f3t35.apps.googleusercontent.com -d client_secret=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 -d device_code=AH-1Ng3TuVCcZAQQMX0hZ1FtTqSmid9E4TkWT71qZuh2uucByX4wIyL1tw41P1etyKEc12u3qT4ktPcxe4ICx-hbfXETdYzRGg -d grant_type=urn%3Aietf%3Aparams%3Aoauth%3Agrant-type%3Adevice_code https://accounts.google.com/o/oauth2/token

curl -X POST -L \
    -H "Authorization: Bearer ya29.a0AX9GBdV0p0FkMSjfoIW1pvwwofbESzLICKahvsvGrZLYinFQLGADZnZnXE2tRka-mhQUK49KkpBa7NhvLvCDSHQXTuAm3tQ-qm-Sx452N4T6pUQUpxCJq-D1UrDun0r9QkQxkmleb4QhZCPEEkjlO-2ZVRTYaCgYKAYcSARMSFQHUCsbCwJWS3uI_QtmwzzdjQt9V3w0163" \
    -F "metadata={name :'TL-KO.pt'};type=application/json;charset=UTF-8" \
    -F "file=@TL-KO.pt;type=application/zip" \
    "https://www.googleapis.com/upload/drive/v3/files?uploadType=multipart"
