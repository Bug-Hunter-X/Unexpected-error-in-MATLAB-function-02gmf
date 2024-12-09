function result = myFunction(input)
  % Check for invalid input
  if ~isnumeric(input) || ~isreal(input) || any(isnan(input)) || any(isinf(input))
    error('Invalid input: Input must be a real-valued numeric array without NaNs or Infs.');
  end

  % Check for large arrays
  if numel(input) > 1e6
    warning('Large input array. Computation may take a long time.');
  end

  % Perform the calculation, adding appropriate error handling
  try
    % ... your calculations here
    result = someValue;
  catch ME
    %Handle the error appropriately.
    error('An error occured during calculation. Check for problematic values or input.
    Message: %s', ME.message);
  end
end

% Example usage
input = [1,2,3];
result = myFunction(input); 