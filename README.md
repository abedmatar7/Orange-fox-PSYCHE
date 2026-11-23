# OrangeFox Recovery Builder for Xiaomi 12X (`psyche`)

Builds the latest [OrangeFox Recovery](https://wiki.orangefox.tech/dev/building) (`fox_12.1`) for Xiaomi 12X (`psyche`) via GitHub Actions and publishes both `OrangeFox-psyche-boot.img` and the flashable `.zip` to GitHub Releases.

## Quick Start
1. Create a new GitHub repository and upload all extracted files from this archive (keeping `.github/workflows/build-orangefox.yml`, `fox_vars.sh`, and `README.md` at the repo root).
2. Open **Actions → Build OrangeFox (psyche) → Run workflow**.
3. Keep the defaults (uses [sekaiacg/device_xiaomi_alioth-TWRP](https://github.com/sekaiacg/device_xiaomi_alioth-TWRP), which includes `twrp_psyche.mk`) or enter your own `psyche` device tree URL/branch/path.
4. Download `OrangeFox-psyche-boot.img` from the **Releases** tab once the build finishes.

## Injecting OrangeFox into Your ColorOS 17 `boot.img`
1. Flash your working ColorOS 17 `boot.img`:
   ```bash
   fastboot flash boot_ab coloros17_boot.img
   ```
2. Temporarily boot the built OrangeFox image:
   ```bash
   fastboot boot OrangeFox-psyche-boot.img
   ```
3. In OrangeFox, open **Menu → Flash Current OrangeFox** and swipe to confirm ([OrangeFox Flashing Guide](https://wiki.orangefox.tech/guides/flashing)).
4. Reboot to **Recovery** to verify OrangeFox sticks, then reboot to **System**.
