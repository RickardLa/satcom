function gain = Gmax(n, D, f, flag)
% Calculates gain of reflector antenna - in linear or logarithmic scale

if nargin == 3
    flag = 'db'; 
end

c = 3e8; 
switch flag
    case 'db'
        gain = 10*log10(n*(pi*D*f/c)^2);
    case 'lin'
        gain = n*(pi*D*f/c)^2;
end

