# our-test-dokku-project

This is a VUE Project that is configured to run in a docker npm container.  It is only an example

> A Vue.js project

## Build Setup

``` bash
# install dependencies
npm install

# serve with hot reload at localhost:8080
npm run dev

# build for production with minification
npm run build

# build for production and view the bundle analyzer report
npm run build --report
```

For a detailed explanation on how things work, check out the [guide](http://vuejs-templates.github.io/webpack/) and [docs for vue-loader](http://vuejs.github.io/vue-loader).



## For docker

# build image
docker build -t ithankyou/docker-vue .

# run image
docker run -d -p 3000:80 --name docker-vue iThankYou/docker-vue
