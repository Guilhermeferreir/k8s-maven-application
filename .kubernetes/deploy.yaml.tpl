apiVersion: apps/v1
kind: Deployment
metadata:
  name: $APP_NAME
  namespace: $NAMESPACE
  labels:
    app: $APP_NAME
spec:
  selector:
    matchLabels:
      app: $APP_NAME
  replicas: 3
  strategy:
    type: RollingUpdate
  template:
    metadata:
      labels:
        app: $APP_NAME
    spec:
      containers:
       —name: $APP_NAME
          image: $IMAGE_NAME:$IMAGE_TAG
          command:
          - java
          - -jar
          - app/app.jar
          ports:
           — containerPort: 8080
          resources:
            limits:
              cpu: 1
              memory: 512Mi
            requests:
              cpu: 512m
              memory: 512Mi