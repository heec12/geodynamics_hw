function [ strain_rate_xz ] = strain_rate_xz( strain_rate_xx, strain_rate_xX, strain_rate_XX, Angle_1, Angle_2 )
% function for calculating the rate of starin \dot{\varepsilon}_xz
% by using Equation (2.150) by Turcotte and Schubert
strain_rate_xz = ((strain_rate_xx*((cot(Angle_1*pi/180))^2 - (cot(Angle_2*pi/180))^2)) - ...
                 (strain_rate_xX*(csc(Angle_1*pi/180))^2) + (strain_rate_XX* ...
                 (csc(Angle_2*pi/180))^2)) / (2*(cot(Angle_2*pi/180) - cot(Angle_1*pi/180)))
end
