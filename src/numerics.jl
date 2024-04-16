
"""
    approx_derivative(f::Function, x::Real64; ϵ = 1e-16)

Return the derivateive of a function ``f(x)`` at ``x``  
## Examples
``f'(x_0) \\approx \\frac{f(x_0 + \\epsilon) - f(x)}{\\epsilon}\\\\``


```julia-repl
julia> f()
```

"""
function approx_derivative(f, x; ϵ = 1e-16)
    f′ =  (f(x + ϵ) - f(x))/ϵ
    return f′
end

"""
tangent(f, x₀; ϵ=1e-2)

Return the tangent of a function ``f(x)`` at ``x``  
## Examples
``f'(x_0) \\approx \\frac{f(x_0 + ϵ) - f(x)}{ϵ}\\\\``
julia > f()
"""
function tangent(f, x₀; ϵ=1e-2)
    slope = approx_derivative(f, x₀; ϵ)
    r(x) = slope * (x - x₀) + f(x₀)
end

export approx_derivative, tangent