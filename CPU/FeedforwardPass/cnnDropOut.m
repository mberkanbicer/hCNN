function [dropOut, DLayer] = cnnDropOut(images, DLayer, test)

    if test == 0
        dim = size(images, 1);
        location = binornd(ones(dim, 1), (1 - DLayer.rate));
        dropOut = images .* location;
        dropOut = dropOut / (1 - DLayer.rate);
        DLayer.location = location;
    else
        dropOut = images;
    end

end
