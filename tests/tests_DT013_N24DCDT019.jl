include(joinpath(@__DIR__, "..", "src", "DT013_N24DCDT019.jl"))
using Test

@testset "DT013 - Noi bot co co dung som" begin
    @test noi_bot_co_co([3, 1, 2]).a == [1, 2, 3]                 # VD01
    @test noi_bot_co_co([1, 2, 3, 4]).a == [1, 2, 3, 4]          # VD02
    @test noi_bot_co_co([9, 1, 8, 2, 7]).a == [1, 2, 7, 8, 9]    # TK01
    @test noi_bot_co_co([5, -1, 5, 0]).a == [-1, 0, 5, 5]       # TK02
    @test noi_bot_co_co([4, 3, 2, 1]).a == [1, 2, 3, 4]          # BIEN01
    @test noi_bot_co_co([2, 2, 2]).a == [2, 2, 2]                # BIEN02
    @test noi_bot_co_co(Int[]).a == Int[]                        # BIEN03
    @test_throws ArgumentError noi_bot_co_co(collect(1:2001))    # LOI01
    @test noi_bot_co_co([7]).a == [7]                            # KT09
    @test noi_bot_co_co([-3, 0, 4, 9]).a == [-3, 0, 4, 9]       # KT10
    @test noi_bot_co_co([1, 2, 3, 4, 5]).so_luot == 1             # KT11
    @test noi_bot_co_co([-2, 5, -2, 5]).a == [-2, -2, 5, 5]     # KT12

    @test noi_bot_co_co([1, 2, 3, 4]).so_sanh == 3
    @test noi_bot_co_co([1, 2, 3, 4]).hoan_doi == 0
    @test noi_bot_du_luot([1, 2, 3, 4]).so_sanh == 6
    @test noi_bot_co_co([3, 1, 2]).so_sanh == 3
    @test noi_bot_co_co([3, 1, 2]).hoan_doi == 2
end

println("Da chay xong bo test DT013.")
