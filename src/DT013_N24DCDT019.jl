# DT013 - Sap xep noi bot co co dung som
# Sinh vien: Pham Do Duong | MSSV: N24DCDT019 | INT13185 Nhom 03

const MAX_N = 2000

function kiem_tra_dau_vao(a::Vector{Int})
    if length(a) > MAX_N
        throw(ArgumentError("Do dai mang vuot gioi han 2000"))
    end
    return true
end

function noi_bot_co_co(a::Vector{Int})
    kiem_tra_dau_vao(a)
    so_sanh = 0
    hoan_doi = 0
    so_luot = 0
    n = length(a)
    for i in 1:max(n - 1, 0)
        da_doi = false
        so_luot += 1
        for j in 1:(n - i)
            so_sanh += 1
            if a[j] > a[j + 1]
                a[j], a[j + 1] = a[j + 1], a[j]
                hoan_doi += 1
                da_doi = true
            end
        end
        if !da_doi
            break
        end
    end
    return (a=a, so_sanh=so_sanh, hoan_doi=hoan_doi, so_luot=so_luot)
end

function noi_bot_du_luot(a::Vector{Int})
    kiem_tra_dau_vao(a)
    so_sanh = 0
    hoan_doi = 0
    so_luot = 0
    n = length(a)
    for i in 1:max(n - 1, 0)
        so_luot += 1
        for j in 1:(n - i)
            so_sanh += 1
            if a[j] > a[j + 1]
                a[j], a[j + 1] = a[j + 1], a[j]
                hoan_doi += 1
            end
        end
    end
    return (a=a, so_sanh=so_sanh, hoan_doi=hoan_doi, so_luot=so_luot)
end

function lan_vet_noi_bot(a::Vector{Int})
    kiem_tra_dau_vao(a)
    b = copy(a)
    println("Ban dau: ", b)
    so_sanh = 0
    hoan_doi = 0
    so_luot = 0
    n = length(b)
    for i in 1:max(n - 1, 0)
        da_doi = false
        so_luot += 1
        for j in 1:(n - i)
            so_sanh += 1
            if b[j] > b[j + 1]
                b[j], b[j + 1] = b[j + 1], b[j]
                hoan_doi += 1
                da_doi = true
            end
        end
        println("Luot ", so_luot, ": a=", b, ", da_doi=", da_doi,
                ", so_sanh=", so_sanh, ", hoan_doi=", hoan_doi)
        if !da_doi
            break
        end
    end
    return (a=b, so_sanh=so_sanh, hoan_doi=hoan_doi, so_luot=so_luot)
end

function in_ket_qua(ten, ketqua)
    println(ten)
    println("  Mang ket qua: ", ketqua.a)
    println("  So sanh: ", ketqua.so_sanh)
    println("  Hoan doi: ", ketqua.hoan_doi)
    println("  Luot ngoai: ", ketqua.so_luot)
end

if abspath(PROGRAM_FILE) == @__FILE__
    println("DT013 - Sap xep noi bot co co dung som")
    println("Vi du 1: a = [3, 1, 2]")
    in_ket_qua("Ban co co", noi_bot_co_co([3, 1, 2]))
    println("\nVi du 2: a = [1, 2, 3, 4]")
    in_ket_qua("Ban co co", noi_bot_co_co([1, 2, 3, 4]))
    println("\nLan vet vi du 1:")
    lan_vet_noi_bot([3, 1, 2])
end
