function [Theta, Cost_vect] = GradientDescent_Rekkache(Theta,Iter, Alpha,X,Y)
    m = size(X,1);
    h2= 0;
    h1= 0;
    Cost_vect = zeros(Iter,1);
    for i=1:Iter
        hypo = Hypothese_Rekkache(Theta,X);
        h1 =  Theta(1) - (Alpha * (1 / m) * sum(hypo - Y));    
        h2 = Theta(2) - (Alpha * (1 / m) * sum((hypo - Y) .* X(:, 2)));
        Theta(1) = h1;
        Theta(2) = h2;
        Cost_vect(i) = Cost_Rekkache(X,Y,Theta);
        
    end
