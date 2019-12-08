function MachineProblem4(Y,V,angle,Ax,Ay)

T =(sqrt(abs((V*sind(angle))^2-2*Ay*Y)) - V*sind(angle))/Ay;

if T <= 0
    T=(-sqrt(abs((V*sind(angle))^2-2*Ay*Y)) - V*sind(angle))/Ay;
end

if Ay== 0
    error('The vertical acceleration should be negative, there will be no Free Fall')
end

t=0:0.1:T;
y = Y + V.*sind(angle).*t+(1./2).*Ay.*t.^2;
x = V.*cosd(angle).*t+(1./2).*Ax.*t.^2;

plot(x,y,'c', 'linewidth', 2)
xlabel('Horizontal distance in meters')
ylabel('Vertical distance in meters')
title('Projectile Motion')
grid on
