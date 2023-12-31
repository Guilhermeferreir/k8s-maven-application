apiVersion: v1
kind: Service
metadata:
  name: $APP_NAME
spec:
  selector:
    app: $APP_NAME
  ports:
  - name: http
    protocol: TCP
    port: 8080
    targetPort: 8080