# 1. Use an official box that already has Node.js installed
FROM node:18-alpine

# 2. Create a folder inside the box to hold our code
WORKDIR /usr/src/app

# 3. Copy our app.js file from your computer into that box
COPY app.js .

# 4. Tell the box to open up Port 3000 so people can visit the site
EXPOSE 3000

# 5. The command to turn the website on when the box opens
CMD ["node", "app.js"]
