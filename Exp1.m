t = linspace(-1, 1, 1000);
alpha = 1 + mod(580,3);

figure;
subplot(2, 2, 1); 
plot(t, sin(20*pi*alpha*t)); 
title('y1(t) = sin(20παt)');

subplot(2, 2, 2);
plot(t, cos(5*pi*alpha*t + pi/4));
title('y2(t) = cos(5παt + π/4)');

subplot(2, 2, 3); 
plot(t, exp(-2*alpha*t));
title('y3(t) = e^{-2αt}');

subplot(2, 2, 4);
plot(t, exp(-0.25*alpha*t) .* sin(20*pi*t));
title('y4(t) = e^{-0.25αt}sin(20πt)');

sgtitle('Plots of Given Signals');
