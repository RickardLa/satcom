%% Project
clc, clear 


f = 1e9;                    % Frequency [Hz]
k = -228.6;                 % Boltzmann's constant [dBW/K/Hz]
R = 800e3;                  % Distance between Tx and Rx
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                        TRANSMITTER - BUOY
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
n = 0.6;                    % Aperture efficiency
D = 1;                      % Diameter of reflector antenna [m]
Pt = 10*log10(8.57);        % Transmit power [dBW]


theta3db = HPBW(f, D)
Gmax_t = Gmax(n, D, f);     % Gain in boresight



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                        RECEIVER - LEO
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
n_r = 0.6;                  % Aperture efficiency
D_r = 1;                    % Diameter of reflector antenna [m]

theta3db_r = HPBW(f, D_r);
Gmax_r = Gmax(n_r, D_r, f);




   

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                           Clear air
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Power budget - All in dB
B0 = -2;                    % Transponder output backoff
Lant = -3;                  % Edge of coverage area
Lp = pathloss(R, f);        % Free space path loss 
La = -0.2;                  % Atmospheric loss
LfTx = 0;                   % Feeder loss in Tx
LfRx = 0;                   % Feeder loss in Rx
Lpol = 0;                   % Polarization loss 


Pr = Pt + Gmax_t + Gmax_r - B0 - Lant - Lp - La - LfTx - LfTx - Lpol;

% Noise power budget -  All in dB
Ts = 10*log10(75);                    % System noise temperature
Bn = 75;                              % Noise bandwidth
N = k + Ts + Bn;                      % Receiver noise power 



CN_clear = Pr - N                           % Carrier to Noise ratio


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                           Worst Case Scenario 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Rain
range = R;                      % Depending on elevation angle
rainRate = 62; 
Lrain = rainpl(range,f,rainRate)

CN_rain = CN_clear - Lrain



