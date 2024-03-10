function prewitt_img = my_prewitt(input_img)
    % Convert image to grayscale if it is not already
    if size(input_img, 3) == 3
        img = rgb2gray(input_img);
    else
        img = input_img;
    end

    % Define the Prewitt operator kernels
    Gx = [-1 0 1; -1 0 1; -1 0 1];
    Gy = Gx';

    % Apply the Prewitt operator
    gx = imfilter(double(img), Gx, 'replicate');
    gy = imfilter(double(img), Gy, 'replicate');

    % Calculate the magnitude of the gradients
    prewitt_img = sqrt(gx.^2 + gy.^2);

    % Normalize the output image
    prewitt_img = uint8((prewitt_img / max(prewitt_img(:))) * 255);
end
