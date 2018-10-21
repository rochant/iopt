pkg load data-smoothing
 
 npts = 20;
 x = rand(npts,1)*2*pi;
 y = sin(x);
 y = y + 1e-1*randn(npts,1);
 xh = linspace(0,2*pi,200)';
 [yh, lambda] = regdatasmooth (x, y, "d", 3, "xhat", xh);
 lambda
 clf
 figure(1);
 plot(x,y,'o','markersize',10,xh,yh,xh,sin(xh))
 title("y(x)")
 legend("noisy","smoothed","sin(x)","location","northeast");
 %--------------------------------------------------------
 % smoothing of scattered data, using "gcv" to determine the optimal lambda