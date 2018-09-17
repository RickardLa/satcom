function angle = HPBW(f,D)
% Calculates the angle of the half-power-beam width in degrees. 
c = 3e8;
angle = (70*c)/(D*f);
end

