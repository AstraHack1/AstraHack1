-- UI Kütüphanesini Yükle
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/AstraHack1/script.lua/main/MainLoader.lua"))()

-- Pencere Oluştur
local Window = Library:CreateWindow("Astra Hile Menüsü", Color3.fromRGB(0, 0, 0))

-- Ana Menü Sekmesi
local MainTab = Window:CreateTab("Ana Menü")

-- Farm Özelliği
local isFarming = false
MainTab:CreateToggle("Farm Aç/Kapa", function(state)
    isFarming = state
    if state then
        print("Farm açıldı!") 
        -- Düşmanları otomatik öldürme kodunu buraya ekleyin
        while isFarming do
            wait(1) -- Bekleme süresi
            -- Düşmanları öldürme işlemi burada
        end
    else
        print("Farm kapatıldı!")
        -- Farm kapatma işlemini burada yapabilirsiniz
    end
end)

-- Eşya Toplama Özelliği
MainTab:CreateButton("Eşyaları Topla", function()
    print("Eşyalar toplanıyor!") 
    -- Eşya toplama işlemi için kodu buraya ekleyin
end)

-- Işınlanma Özelliği
MainTab:CreateDropdown("Işınlanma Noktası", {"Nokta1", "Nokta2"}, function(selected)
    print("Işınlanma noktası seçildi: " .. selected)
    -- Seçilen noktaya ışınlanma kodunu buraya ekleyin
end)

-- UI'yi Göster
Library:CreateWindow("Astra Hile Menüsü Açıldı")
