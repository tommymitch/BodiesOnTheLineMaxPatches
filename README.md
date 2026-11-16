# Bodies on the Line — Max Patches

Procedural audio patches for [Max](https://cycling74.com/products/max) (Max 9), made for **Bodies on the Line**, a project with the artist **Lisa May Thomas**.

Every sound is synthesised in real time: no samples are used. Each patch has its controls laid out at the top as dials with a range of 0 to 1, so they are easy to perform, automate or map to sensors.

## Patches

| Folder | Main patch | What it makes | Main controls |
|---|---|---|---|
| `Rain/` | `Procedural_Rain.maxpat` | Rain as four layers: a distant wash, close droplets, hits on hard surfaces, and drops on a window pane | **Intensity** (drizzle → downpour), plus level and character dials for each layer |
| `Wind/` | `Procedural_Wind.maxpat` | Wind with howl and singing wires, banging shutters, a slamming door, cans rolling down the street, and clothes flapping on a line | **Strength**, **Gusts**, **Squalls**: one live wind-speed signal drives every layer |
| `Fire/` | `Procedural_Fire.maxpat` | Fire: roar, hiss, crackles, wood pops, ember fizz, and logs settling | **Size** (candle → bonfire), **Draught** |
| `Breathing/` | `Procedural_Breathing.maxpat` | Human breathing through nose or mouth, with optional voicing, rasp and wheeze | **Exertion** (calm → panting), plus a manual **Lungs** input |
| `Heartbeat/` | `Procedural_Heartbeat.maxpat` | A heartbeat: lub-dub valve sounds, gallop, murmur and pulse, from clinical stethoscope to deep film-score thump | **Rate** (40–200 BPM), **Weight**, plus presets. `previews/` has example recordings |

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

## Credits

- **Bodies on the Line**, a project with the artist **Lisa May Thomas**.
- **Mica Lab**.
- The rain, wind and fire models draw on techniques from Andy Farnell's book *Designing Sound* (MIT Press, 2010).
