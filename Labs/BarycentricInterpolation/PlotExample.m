% ind = 1:700;
% ipoints = cos((2*ind -1)*pi/(2*length(ind)));
N = 10000;
ipoints = cos(pi*(0:N)'/N);
runge =@(x) 1./(1 + 25*x.^2);
fun =@(x) abs(x) + .5*x -x.^2;
xin = linspace(-1,1,1000);
plot(xin,LInterp2(xin,ipoints,fun(ipoints)),'r');
hold on;
%plot(xin,runge(xin));