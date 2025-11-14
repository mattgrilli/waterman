# Release Notes - Aetheric Water Optimizer

## Version 1.0.0 - Initial Release

**Release Date:** 2025-11-14

### Overview
The Aetheric Water Optimizer is a desktop application for Ultima Online: Outlands players that helps find the optimal combination of 3 aetheric waters to average closest to a target value (default: 7.0). The tool integrates seamlessly with Razor Enhanced to automate water scanning and collection in-game.

---

## Features

### Core Functionality
- **Optimal Combination Finder** - Brute-force algorithm finds the best 3-water combination from your available pool
- **Customizable Target** - Adjust target average to any value (default: 7.0)
- **Water Tracking** - Separate lists for available and used waters to prevent reusing combinations

### Import Options
- **📂 File Import** - Import water values directly from UO journal log files
  - Auto-detects journal format: `aetheric water: 8.820 aP`
  - Default path to UO Outlands journal logs directory
  - Automatic deduplication of values
- **➕ Manual Entry** - Add comma-separated values directly in the GUI
  - Example: `8.820, 4.540, 5.115`

### Script Management
- **📤 Export Scanner** - Export the scanner script directly from the app
  - No need to download separately from GitHub
  - Saves directly to your Razor scripts folder
  - Everything you need is built into the app!

### Razor Script Integration
- **Auto-Generated Scripts** - Export optimal combinations as ready-to-use Razor Enhanced scripts
- **Scanner Script Included** - Scan all aetheric waters in your backpack and output to journal
- **Picker Scripts** - Automatically locate and collect the exact 3 waters you need in-game
- **Default Save Location** - Opens directly to your Razor scripts folder

### Water Management
- **Available Waters List** - View and manage your current water inventory
  - Right-click → Delete to remove waters
- **Used Waters List** - Track previously used combinations
  - Right-click → Restore to Available
  - Right-click → Export Script (regenerate picker for 3 consecutive waters)
  - Right-click → Delete to permanently remove

### User Interface
- **Dark Theme** - Easy on the eyes with brown/tan color scheme matching UO aesthetics
- **Real-time Display** - Shows water IDs, values, average, and difference from target
- **Status Updates** - Clear feedback on all operations
- **Responsive Layout** - Resizable window with scrollable lists

---

## Distribution Formats

### Standalone Executable (Recommended)
- **File:** `AethericWaterOptimizer.exe`
- **Size:** ~11 MB
- **Requirements:** Administrator privileges (for saving to Razor scripts folder)
- **Platform:** Windows 10/11
- **No Python Installation Needed** - All dependencies bundled inside
- **Note:** The app will prompt for admin access when launched

### Python Source
- **File:** `watercalc.py`
- **Requirements:** Python 3.6+ with tkinter (included in most distributions)
- **Platform:** Cross-platform (Windows/Mac/Linux)
- **Run:** `python watercalc.py`

---

## Installation

### Option 1: Executable (Easiest)
1. Download `AethericWaterOptimizer.exe` from the releases page
2. Double-click to run
3. Click "Yes" when Windows asks for administrator permission
4. No installation or configuration required!

### Option 2: Python Source
1. Clone or download this repository
2. Ensure Python 3.6+ is installed
3. Run: `python watercalc.py`

---

## Quick Start Workflow

1. **Get Scanner Script**
   - Click **📤 Export Scanner** in the app
   - Save to your Razor scripts folder
   - (Or use the included `aetheric_scanner.razor` file)

2. **Scan Waters In-Game**
   - Load `aetheric_scanner.razor` in Razor Enhanced
   - Put waters in backpack and run script
   - Journal displays all water values

3. **Import to GUI**
   - Click **📂 Import** button
   - Select your journal log file (or copy/paste values manually)
   - Waters automatically added to Available list

4. **Find Optimal Combination**
   - Set target average (default: 7.0)
   - Click **🔍 Find Best**
   - View results with IDs, values, and average

5. **Export Picker Script**
   - Click **📝 Export Script**
   - Save to Razor scripts folder
   - Script contains exact 3 water values needed

6. **Collect Waters In-Game**
   - Load exported picker script in Razor Enhanced
   - Put all waters in backpack
   - Run script to auto-collect the 3 optimal waters

7. **Mark as Used**
   - Click **✓ Use Combination** in GUI
   - Waters move to Used list
   - Ready to find next optimal combination!

---

## Technical Details

### Data Storage
- **Format:** JSON (`aetheric_waters.json`)
- **Location:** Same directory as executable/script
- **Persistence:** Automatic save on all operations
- **Backup Recommended:** Copy JSON file to preserve history

### Algorithm
- **Method:** Brute-force combination search
- **Complexity:** O(n choose 3) where n = available waters
- **Performance:** Near-instant for typical inventory sizes (<1000 waters)
- **Accuracy:** Finds mathematically optimal combination every time

### Razor Script Compatibility
- **Platform:** Razor Enhanced for UO Outlands
- **Item ID:** 3902 (aetheric water)
- **Label Format:** `aetheric water: X.XXX aP`
- **Actions:** Uses `getlabel`, `lift`, and `drop` commands

---

## Files Included

```
waterman/
├── AethericWaterOptimizer.exe    # Standalone executable
├── watercalc.py                  # Python source code
├── aetheric_scanner.razor        # Razor script to scan all waters
├── aetheric_picker_template.razor # Manual template (for reference)
├── build_exe.bat                 # Build script for creating exe
├── README.md                     # Full documentation
├── RELEASE_NOTES.md              # This file
└── aetheric_waters.json          # Your data (auto-created)
```

---

## Known Issues & Limitations

### Current Version
- **Windows Only (exe):** Executable is Windows-only; use Python source for other platforms
- **Single Target:** Must re-run Find Best for different target values
- **No Undo:** Deleting waters is permanent (restore from backup if needed)

### Future Enhancements (Planned)
- Batch processing mode for multiple target values
- Export combination history to CSV
- Water expiration tracking
- Multi-target optimization

---

## System Requirements

### For Executable
- **OS:** Windows 10 or later
- **RAM:** 50 MB minimum
- **Disk Space:** 20 MB
- **Display:** 800x600 minimum resolution
- **Permissions:** Administrator access (for saving to Razor scripts folder in Program Files)

### For Python Source
- **Python:** 3.6 or later
- **Libraries:** tkinter (built-in with most Python installations)
- **OS:** Windows, macOS, or Linux

### For Razor Integration
- **Game:** Ultima Online: Outlands
- **Client:** ClassicUO
- **Assistant:** Razor Enhanced

---

## Building from Source

To create your own executable:

1. Set up virtual environment:
   ```bash
   python -m venv venv
   venv\Scripts\activate
   ```

2. Install PyInstaller:
   ```bash
   pip install pyinstaller
   ```

3. Build executable:
   ```bash
   build_exe.bat
   ```
   Or manually:
   ```bash
   pyinstaller --onefile --windowed --name "AethericWaterOptimizer" watercalc.py
   ```

4. Find executable in `dist/` folder

---

## License

Free to use and modify. Share with your Outlands friends!

---

## Credits

Created for the Ultima Online: Outlands community.

**Special Thanks:**
- UO Outlands team for the amazing shard
- Razor Enhanced developers for the scripting platform
- The Outlands alchemy community for inspiration

---

## Support & Feedback

**Issues:** Report bugs on the GitHub issues page
**Questions:** Post in your guild Discord or Outlands forums
**Contributions:** Pull requests welcome!

---

## Changelog

### v1.0.0 (2025-11-14)
- Initial release
- Core optimization algorithm
- Import from journal files
- Manual water entry
- Export scanner script directly from app
- Auto-generate Razor picker scripts
- Water tracking (available/used lists)
- Context menu management (restore, delete, export)
- Dark theme GUI
- Standalone Windows executable
- Complete documentation

---

**Happy water hunting, Britannians!**
