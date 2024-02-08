using temp_test
using Test

@testset "temp_test.jl" begin
    @test SingleCard(3,4) == SingleCard(♠,4)
    @test HandfulOfCard([SingleCard(2,4),SingleCard(🐉)]) == SingleCard[SingleCard(2,4),SingleCard(🐉)]
    @test temp_test.AllCards == HandfulOfCard(
        append!([SingleCard(i, j) for j in 2:14 for i in 0:3],
            [SingleCard(🐍), SingleCard(🐉)])
    )
end
