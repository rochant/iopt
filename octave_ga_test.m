function MainFun()

nVar = 3;
lb = -5*ones(1,nVar);
ub = 5*ones(1,nVar);

options = gaoptimset ('Generations', 1000, 'PopulationSize', 50);

[xmin,fmin,exitflag] = ga(@SubFun,nVar,[],[],[],[],lb,ub) % 


function y=SubFun(x)
y=(x(1)-0.5)^2+3*x(2)^2+0.5*(x(3)+0.8)^4;