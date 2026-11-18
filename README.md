# Bodies on the Line — Max Patches

Procedural audio patches for [Max](https://cycling74.com/products/max) (Max 9), made for **Bodies on the Line**, a project with the artist **Lisa May Thomas**.

Every sound is synthesised in real time: no samples are used. Each patch has its controls laid out at the top as dials with a range of 0 to 1, so they are easy to perform, automate or map to sensors.

Each patch comes in two versions:

- **Standalone Max patch:** `Procedural_*.maxpat` in each folder.
- **Max for Live instrument:** `M4L/Procedural *.amxd` in each folder, for Ableton Live. Every control can be automated, and Breathing, Heartbeat and Sea can sync to Live's transport. See [Max for Live devices](#max-for-live-devices).

## Patches

| Folder | Main patch | What it makes | Main controls |
|---|---|---|---|
| `Rain/` | `Procedural_Rain.maxpat` | Rain as four layers: a distant wash, close droplets, hits on hard surfaces, and drops on a window pane | **Intensity** (drizzle → downpour), plus level and character dials for each layer |
| `Wind/` | `Procedural_Wind.maxpat` | Wind with howl and singing wires, banging shutters, a slamming door, cans rolling down the street, and clothes flapping on a line | **Strength**, **Gusts**, **Squalls**: one live wind-speed signal drives every layer |
| `Fire/` | `Procedural_Fire.maxpat` | Fire: roar, hiss, crackles, wood pops, ember fizz, and logs settling | **Size** (candle → bonfire), **Draught** |
| `Breathing/` | `Procedural_Breathing.maxpat` | Human breathing through nose or mouth, with optional voicing, rasp and wheeze | **Exertion** (calm → panting), plus a manual **Lungs** input |
| `Heartbeat/` | `Procedural_Heartbeat.maxpat` | A heartbeat: lub-dub valve sounds, gallop, murmur and pulse, from clinical stethoscope to deep film-score thump | **Rate** (40–200 BPM), **Weight**, plus presets. `previews/` has example recordings |
| `Sea/` | `Procedural_Sea.maxpat` | Waves lapping on a beach: the break, the rush up the shore, sand fizzing as the water soaks in, pebbles rattling in the backwash, and a distant surf bed | **Beach** (sand → pebble), **Wave Length** (½–8 bars), **Sync** to the transport. `previews/` has example recordings |

## Using them

1. Open the main patch (`Procedural_*.maxpat`) in Max 9.
2. Click the speaker (`ezdac~`) to turn audio on.
3. Turn the dials.

Several patches use `poly~` voice files, so **keep each folder together**. Max finds the voices because they sit next to the main patch:

- Rain: `rain_drop`, `rain_hit`, `rain_tick`
- Wind: `wind_knock`, `wind_can`
- Fire: `fire_crackle`
- Heartbeat: `heart_valve`

Each sound layer lives in its own subpatcher (`p wash`, `p shutters`, `p crackle`, …), with comments explaining how it works. Double-click one (with the patch unlocked) to look inside.

### Driving the breathing from outside

In `Procedural_Breathing.maxpat`, turn **Manual** up to 1 and move the **Lungs** slider. Its value is how full the lungs are, from 0 to 1. Rising breathes in and falling breathes out, and faster movement makes a harder breath. To drive it from another patch or a sensor, send a 0–1 float to `[s breath_lungin]`, or use the patch as an abstraction and feed its inlet.

## Max for Live devices

Each folder has an `M4L/` subfolder containing a Max for Live **instrument** made from the standalone patch. The devices were built for **Live 10.1 with Max 8** and should also open in later versions.

### Using a device

1. Drag `M4L/Procedural <Name>.amxd` onto a **MIDI track** in Live. The devices are instruments, so they don't load on audio tracks.
2. It plays straight away and keeps running. Control loudness with Live's mixer, or with the device's Volume control.
3. Every control is a Live parameter with a readable name (for example "Intensity", "Wash Level", "Shutters Loose" or "Rhythm Rate"). It can be automated, MIDI-mapped or driven by Max for Live LFO devices.

All the controls fit in Live's device view. Several copies of the same device can run at once without affecting each other.

### Freeze before sharing

Rain, Wind, Fire and Heartbeat use `poly~` voice files, which sit next to the device in `M4L/`. Keep them together while you work. To make a single self-contained file to share or move, open the device's editor (the **Edit** button), click **Freeze** in the Max toolbar, and save. The frozen `.amxd` includes the voices.

### Breathing: Mode, Lungs and sync

- **Mode** chooses what drives the breathing:
  - **Auto:** the device's own rhythm (Rate, Pause, Irregular…).
  - **Sync:** Live's transport.
  - **Manual:** the **Lungs** control.
- **Lungs** (Manual mode) is how full the lungs are. Rising breathes in and falling breathes out, and faster movement makes a harder breath. Draw an automation curve on it to perform the breathing.
- **Sync › Every** sets one breath per 1 beat, 2 beats, 1 bar, 2 bars or 4 bars (4/4). Each inhale starts on the grid.

### Heartbeat: sync

- **Sync** locks the heartbeat to Live's tempo, with the lub on the beat.
- **Speed** sets ½×, 1× or 2× the tempo.

### Sea: sync

- **Wave Length** sets one wave per ½, 1, 2, 4 or 8 bars (4/4).
- With **Sync** on and Live playing, the waves lock to the song position, so each wave breaks at the same point on the bar grid. Jumping around the arrangement stays in sync.
- While Live is stopped, or with Sync off, the waves keep going at Live's tempo.
- **Looseness** makes the waves irregular. Each wave starts late by a random amount, up to about a third of a wave. With Sync on, the waves still follow the bar grid. With Sync off or Live stopped, each wave's length also varies by up to ±30%. At 0, every wave is exactly on time.
- The Sea device needs no voice files, so it doesn't need freezing.

### Sync behaviour (Breathing and Heartbeat)

- While Live **plays**, beats and breaths lock to Live's grid.
- While Live is **stopped**, they keep going at Live's tempo.
- **Looseness** adds a random lag of up to 12% of the beat or breath, for a human feel. At 0 the timing is exactly on the grid.

### Differences from the standalone patches

- Rain and Fire read Live's actual sample rate, so they sound the same at 44.1 and 48 kHz.
- `[s breath_lungin]` doesn't work in the device version. Use automation on **Lungs** instead.
- The Heartbeat's **Link** control (following the Breathing patch's airflow) works between the standalone patches, but not between the two Max for Live devices.

## Credits

- **Bodies on the Line**, a project with the artist **Lisa May Thomas**.
- **Mica Lab**.
- The rain, wind and fire models draw on techniques from Andy Farnell's book *Designing Sound* (MIT Press, 2010).
