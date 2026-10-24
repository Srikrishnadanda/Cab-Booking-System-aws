@echo off
set PATH=%PATH%;C:\Program Files\Kubernetes\Minikube
echo ========================================================
echo Loading Cab Booking Docker Images into Minikube...
echo ========================================================

for %%i in (
  mysql:8.0
  cab-booking-system1-main-eurekaserver:latest
  cab-booking-system1-main-apigateway:latest
  cab-booking-system1-main-authservice:latest
  cab-booking-system1-main-userservice:latest
  cab-booking-system1-main-driverservice:latest
  cab-booking-system1-main-rideservice:latest
  cab-booking-system1-main-paymentservice:latest
  cab-booking-system1-main-locationservice:latest
  cab-booking-system1-main-ratingservice:latest
) do (
  echo [Loading] %%i ...
  minikube image load %%i
)

echo.
echo ========================================================
echo All images loaded successfully into Minikube!
echo ========================================================
pause
