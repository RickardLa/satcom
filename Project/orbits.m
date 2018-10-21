%%
clc, clear

mu = 3.986004418e5; 
r_earth = 6378.137; 
r_LEO = 780; 
r = r_earth + r_LEO;


% v_earth = 1674.4/(60^2);     % km/s

v = sqrt(mu/r);                % km/s
T_LEO = (2*pi*r/v)/60;         % minutes


w_earth = 0.25;                % Earth's rotation - Degrees per minute
w_LEO = T_LEO * w_earth;       % Earth's rotation in 1 LEO-orbit




% Worst case scenario: LEO passes w_LEO/2 degrees away from ground station
% Therefore, maximum central angle is w_LEO/2

gamma = w_LEO/2;                            % Central angle
eps = 10;                                   % Min. elevation angle 
theta3db = 2*(180 - gamma - eps - 90)       % HPBW needed 


HPBW1 = HPBW(200e6, 1)





