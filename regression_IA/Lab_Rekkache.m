X1 = load('Input1.txt');
Y = load('Output.txt');
X = [ones(size(X1,1),1),X1];
Theta = zeros(2,1);
Iter = 3000;
Alpha = 0.01;
[Theta, Cost_vect] = GradientDescent_Rekkache(Theta,Iter, Alpha,X,Y);

PlotCost_Rekkache(Cost_vect)
hypo = Hypothese_Rekkache(Theta, X);
PlotHypo_Rekkache(X,Y,hypo);