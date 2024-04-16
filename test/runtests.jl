using Tangent
using Test

@testset "Numerical Derivative" begin
    # Write your tests here.

    f(x) = 2x + 1
    
    @test approx_derivative(f, 3.0; ϵ = 1.0) == 2.0
    @test approx_derivative(f, 3.0; ϵ = 1.0) == 2.0
    @test approx_derivative(f, 3.0; ϵ = 1.0) ≈ 2.0

end
