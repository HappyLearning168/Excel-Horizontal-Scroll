# Excel-Horizontal-Scroll

Add Google Sheets-style horizontal scrolling to Microsoft Excel.

Hold **Shift + Mouse Wheel** to scroll horizontally in Excel worksheets.

## Features

* Shift + Mouse Wheel → Horizontal Scroll
* Works only in Microsoft Excel
* Lightweight and portable
* No installation required
* AutoHotkey v2 runtime included
* Supports automatic startup with Windows

## Files

```text
Excel-Horizontal-Scroll
├─ AutoHotkey64.exe
├─ ExcelScroll.ahk
└─ Install.bat
```

## Installation

### Option 1 - Portable

1. Download and extract the ZIP file.
2. Double-click `AutoHotkey64.exe`.
3. Run `ExcelScroll.ahk`.

### Option 2 - Install for current user

1. Download and extract the ZIP file.
2. Run `Install.bat`.
3. The script will:

   * Copy required files to `%LOCALAPPDATA%\ExcelHorizontalScroll`
   * Create a startup entry
   * Launch automatically

After installation, the feature will start automatically whenever Windows starts.

## Usage

Open Microsoft Excel and use:

* **Shift + Mouse Wheel Up** → Scroll Left
* **Shift + Mouse Wheel Down** → Scroll Right

The behavior is limited to Excel and does not affect other applications.

## Script

```ahk
#HotIf WinActive("ahk_exe EXCEL.EXE")

+WheelUp::Send("{WheelLeft}")
+WheelDown::Send("{WheelRight}")

#HotIf
```

## Requirements

* Windows 10 / 11
* Microsoft Excel
* AutoHotkey v2 runtime (included)

## License

AutoHotkey is licensed under its own license.

This project only provides a simple Excel horizontal scrolling utility built on top of AutoHotkey.
