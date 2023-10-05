apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: $APP_NAME
  namespace: $APP_NAME
  annotations:
    kubernetes.io/ingress.class: nginx
    nginx.ingress.kubernetes.io/rewrite-target: /$2
spec:
  ingressClassName: nginx
  rules:
  - http:
      paths:
      - path: /$APP_NAME(/|$)(.*)
        pathType: Prefix
        backend:
          service:
            name: $APP_NAME
            port:
              number: 8080