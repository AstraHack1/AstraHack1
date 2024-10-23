-- UI Kütüphanesini Yükle
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/AstraHack1/AstraHack1/main/Library.lua"))()

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
        -- Burada düşmanları öldürme kodunu ekleyin
        while isFarming do
            wait(1) -- Bekleme süresi
            -- Örnek: Düşmanları öldürme işlemi
        end
    else
        print("Farm kapatıldı!")
        -- Farm kapatma işlemini burada yapabilirsiniz
    end
end)

-- Eşya Toplama Özelliği
MainTab:CreateButton("Eşyaları Topla", function()
    print("Eşyalar toplanıyor!") 
    -- Burada eşya toplama işlemi için kodu ekleyin
end)

-- Işınlanma Özelliği
MainTab:CreateDropdown("Işınlanma Noktası", {"Nokta1", "Nokta2"}, function(selected)
    print("Işınlanma noktası seçildi: " .. selected)
    -- Burada seçilen noktaya ışınlanma kodunu ekleyin
end)

-- UI'yi Göster
Library:C
reateWindow("Astra Hile Menüsü Açıldı")
