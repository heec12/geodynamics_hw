function [ strain_rate_zz ] = strain_rate_zz( strain_rate_xx, strain_rate_xX, strain_rate_XX, Angle_1, Angle_2 )
% function for calculating the rate of starin \dot{\varepsilon}_zz
% by using Equation (2.149) by Turcotte and Schubert
strain_rate_zz = ((strain_rate_xx * (cot(Angle_1 * pi/180) - cot(Angle_2 * pi/180))) - ...
                 (strain_rate_xX * sec(Angle_1 * pi/180) * csc(Angle_1*pi/180)) + ...
                 (strain_rate_XX*sec(Angle_2*pi/180)* ...
                 csc(Angle_2*pi/180))) / (tan(Angle_2*pi/180) - tan(Angle_1*pi/180))
end

