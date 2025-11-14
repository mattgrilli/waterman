# ⚗️ Aetheric Water Optimizer

A Python GUI tool for Ultima Online: Outlands that helps you find the optimal combination of 3 aetheric waters to average closest to your target value (default: 7.0).

## 📋 Features

- **Import water values** directly from your UO journal logs
- **Find best combinations** using brute-force optimization
- **Auto-generate Razor scripts** to collect the optimal waters in-game
- **Track used waters** to avoid reusing the same combinations
- **Manage your inventory** with restore/delete functions
- **Export scripts from history** to regenerate picker scripts from previously used waters

## 🚀 Quick Start

### Requirements
- Python 3.6 or higher (no additional libraries needed - uses built-in tkinter)
- Ultima Online: Outlands with Razor Enhanced

### Installation

1. Clone or download this repository
2. Run the Python GUI:
   ```bash
   python watercalc.py
   ```

## 📖 How to Use

### Step 1: Scan Your Waters (In-Game)

1. Load the **aetheric_scanner.razor** script into Razor Enhanced
2. Put all your aetheric waters in your backpack
3. Run the script
4. Your journal will display all water values

### Step 2: Import to Python GUI

**Option A: Import from Journal File**
1. Copy your journal output to a text file
2. Click **📂 Import** in the Python GUI
3. Select the journal text file
4. Waters automatically imported!

**Option B: Manual Entry**
1. Type comma-separated values in the entry box
2. Example: `8.820, 4.540, 5.115`
3. Click **➕ Add Waters** or press Enter

### Step 3: Find Best Combination

1. Enter your target average (default is 7.0)
2. Click **🔍 Find Best**
3. The optimal 3-water combination is displayed with:
   - Individual water IDs and values
   - Average value
   - Difference from target

### Step 4: Export Picker Script

1. Click **📝 Export Script**
2. Save the auto-generated Razor script
3. The script contains the exact 3 water values you need!

### Step 5: Collect Waters (In-Game)

1. Load your exported picker script into Razor Enhanced
2. Put all your waters in your backpack
3. Run the script
4. It automatically finds and organizes those 3 specific waters!

### Step 6: Mark as Used (Optional)

1. After collecting, click **✓ Use Combination** in the Python GUI
2. The waters move from "Available" to "Used"
3. Prevents accidentally reusing the same combination

## 🎨 GUI Features

### Available Waters List
- Shows all waters you can use
- **Right-click** → Delete to remove a water

### Used Waters List
- Shows waters you've already used
- **Right-click** → Options:
  - **Restore to Available** - Move back to available pool
  - **Export Script (3 waters)** - Generate picker script from 3 consecutive used waters
  - **Delete** - Permanently remove

### Buttons
- **➕ Add Waters** - Manually add comma-separated values
- **📂 Import** - Import from journal text file
- **🔍 Find Best** - Calculate optimal combination
- **📝 Export Script** - Generate Razor picker script (doesn't mark as used)
- **✓ Use Combination** - Mark waters as used (moves to used list)

## 📁 File Structure

```
waterman/
├── watercalc.py                      # Main Python GUI application
├── aetheric_scanner.razor            # Razor script to scan all waters
├── aetheric_picker_template.razor    # Manual template (for reference)
├── aetheric_waters.json              # Your data (auto-created, in .gitignore)
└── README.md                         # This file
```

## 🔧 Advanced Usage

### Custom Target Values
Want to target something other than 7.0? Just change the "Target average" field before clicking Find Best!

### Export from History
1. Right-click on any used water
2. Select "Export Script (3 waters)"
3. Generates a picker script for that water + the next 2 consecutive waters

### Managing Your Database
- Data is saved to `aetheric_waters.json`
- Backup this file to preserve your tracking history
- Delete it to start fresh

## 🎮 Tips & Tricks

1. **Run scanner script regularly** - Keep your available waters up to date
2. **Use the target value** - If you need a specific average, adjust the target!
3. **Export before using** - You can export the script multiple times before marking as used
4. **Restore mistakes** - Accidentally marked as used? Right-click → Restore!
5. **Batch processing** - Import many waters at once, then keep finding optimal combinations

## 🐛 Troubleshooting

**"No Values Found" when importing**
- Make sure your text file contains lines like: `aetheric water: 8.820 aP`
- The scanner script outputs the correct format automatically

**Razor script doesn't find waters**
- Ensure waters are in your **backpack** (not bank or other containers)
- Values must match exactly (including decimal places)

**Python GUI won't start**
- Make sure you have Python 3.6+ installed
- Run `python --version` to check
- tkinter is included with most Python installations

## 📝 License

Free to use and modify. Share with your Outlands friends!

## 🙏 Credits

Created for the Ultima Online: Outlands community. Happy water hunting!

---

**Questions?** Post in your guild Discord or Outlands forums!
