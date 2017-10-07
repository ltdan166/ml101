function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.1;

set = [0.01; 0.03; 0.1; 0.3; 1; 3; 10; 30];

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%

%train with every parameters of the sigma and C
l = size(set)(1);
err_array = zeros (l,l);
%for i=1:l %C
%	for j=1:l %sigma
%		%print out debug info
%		fprintf ("Training for C=%f, sigma=%f. \n", set(i), set(j));
%	
%		model= svmTrain(X, y, set(i), @(x1, x2) gaussianKernel(x1, x2, set(j))); 
%		ypred = svmPredict (model, Xval);
%		
%		%compute and store the error 
%		err_array (i, j) = mean (double (ypred ~= yval));		
%		fprintf ("Error for C=%f, sigma=%f is %f. \n", set(i), set(j), err_array(i, j));
%		fprintf ("\n");
%	end;		
%end;	

%find the min value
err_min = min(min(err_array));

[Cidx, sigmaIdx] = find (err_array==err_min);

%C = set(Cidx);
%sigma = set(sigmaIdx);

fprintf ("Optimum value for C=%f, sigma=%f. \n", C, sigma);

% =========================================================================

end
