
"""
    approx_derivative(f::Function, x::Real64; ϵ = 1e-16)

Return the derivateive of a function ``f(x)`` at ``x``  
## Examples
``f'(x_0) \\approx \\frac{f(x_0 + ϵ) - f(x)}{ϵ}``
julia > f()
``  
"""
function approx_derivative(f, x::Float64; ϵ::Float64 = 1e-16)
    f′ =  (f(x + ϵ) - f(x))/ϵ
    return f′
end

export approx_derivative