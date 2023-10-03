-- Define a function to display the main menu
function displayMenu()
    print("Lua Menu:")
    print("1. Lua Installation")
    print("2. Lua Nothing")
    print("0. Exit")
end

-- Define a function to display the "Lua Nothing" submenu
function displayMenuNothing()
    print("Lua Nothing:")
    print("0. Exit")
end

-- Define a function to display the "Lua Installation" submenu
function displayMenuInstallation()
    print("Lua Installation:")
    print("1. Go To: https://luabinaries.sourceforge.net/#installation")
    print("2. Download Pre-compiled Lua libraries and executables")
    print("3. Extract the Zip lua-5.4.2_Win64_bin.zip to a new Folder on Root C:")
    print("4. Rename the Executable 'lua54.exe' to 'lua.exe'")
    print("5. Add the Variable Path to 'C:\\Lua'")
    print("6. Test Lua Installation")
    print("0. Back to Main Menu")
end

-- Main program loop
while true do
    displayMenu()
    
    -- Read user input
    local choice = tonumber(io.read())
    
    if choice == 1 then
        -- Display the "Lua Installation" submenu
        while true do
            displayMenuInstallation()
            local subChoice = tonumber(io.read())
            
            if subChoice == 0 then
                break -- Return to the main menu
            else
                print("Invalid choice. Please enter a valid option.")
            end
        end
    elseif choice == 2 then
        -- Display the "Lua Nothing" submenu
        while true do
            displayMenuNothing()
            local subChoice = tonumber(io.read())
            
            if subChoice == 0 then
                break -- Return to the main menu
            else
                print("Invalid choice. Please enter a valid option.")
            end
        end
    elseif choice == 0 then
        print("Exiting. Goodbye!")
        break
    else
        print("Invalid choice. Please enter a valid option.")
    end
end
