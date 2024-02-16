% project Adaptive control course fall_2023
% fatemeh moghadasian 401129050
% Article:MRAC with SMC Applied to Lateral Control of a Fixed-Wing MAV
clc;clear all;close all;
% parameter
rho=1.05; %air density (kg/m^3)
s=0.09; %wing aera (m^2)
b=0.914; %wing span (m)
c=0.01; %middle chord line (m)
I_xx=0.16; %roll angle moment of inertia
c_lp=-0.15; %dimensionless coefficient for roll angle
c_ldeltaa=0.005; %dimensionless coefficient for ailerons movement
v=16; %velocity (m/s)
L_p=((rho*s*v*b^2)/4*I_xx)*c_lp;
L_deltaa=((rho*s*v^2*b)/2*I_xx)*c_ldeltaa;
%model refrence parameter
zeta=3.17;
omega=3.16;
num=[omega^2];
den=[1 2*zeta*omega omega^2];
sys_m=tf(num,den)
figure;
rlocus(sys_m);