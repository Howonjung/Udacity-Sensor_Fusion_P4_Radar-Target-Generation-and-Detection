beatFreqs = [0,  1.1*10^6, 13*10^6, 24*10^6];
rangeResult = zeros(size(beatFreqs));
radarMaxRange = 300; % (m)
radarRangeRes = 1; % (m)
c = 3*10^8; % speed of light

Bsweep = c / (2*radarRangeRes);
fprintf("Bsweep: %f\n", Bsweep);

chirpT = 5.5*2*radarMaxRange / c; % 5.5 times of the trip tiem for maximum range
fprintf("chirpT: %f\n", chirpT);

for i=1:length(beatFreqs)
    rangeResult(i) = (c*chirpT*beatFreqs(i)) / (2*Bsweep);
end
for i=1:length(rangeResult)
    fprintf("rangeResult(%d): %f (m)\n", i, rangeResult(i));
end

