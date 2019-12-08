function projection(S, V, angle, AX, AY)

if AY >= 0
    error("The vertical acceleration should not be equal to zero.")
end

y = [(1/2)*AY, V*sind(angle), S];

t = roots(y);
t = 0:(t(t > 0)/1000):t(t > 0);

y = polyval(y, t);
y  = y(y >= 0);

x = [(1/2)*AX, V*cosd(theta), 0];
x = polyval(x, t);
x = x(1:(length(y)));

xi = V*t*cosd(theta);
xi = xi(1:(length(y)));

plot(x, y, 'r', 'linewidth', '1')
hold on
grid on
plot(xi, y, '-')
title('Projectile motion')
xlabel('Horizontal distance (meters)')
ylabel('Vertical distance (meters)')

hold off

end