@echo off
cd /d D:\Downloads\cab-booking-system1-main
echo ========================================================
echo Deploying Cab Booking Microservices to Kubernetes...
echo ========================================================
kubectl apply -f k8s/
echo.
echo ========================================================
echo Current Pod Status:
echo ========================================================
kubectl get pods -n cab-booking
pause
