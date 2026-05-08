# Container vs. Virtuelle Maschinen – Lösung

| Kriterium              | Virtuelle Maschine              | Container                        |
|------------------------|---------------------------------|----------------------------------|
| Startzeit              | Minuten                         | Sekunden (oder weniger)          |
| Ressourcenverbrauch    | Hoch (eigenes OS, GB RAM)       | Gering (geteilter Kernel, MB RAM)|
| Isolation              | Vollständig (Hypervisor)        | Prozess-Isolation (Namespaces)   |
| Betriebssystem         | Eigenes vollständiges OS        | Teilt Host-Kernel                |
| Image-Größe (typisch)  | Gigabytes                       | Megabytes                        |
| Portabilität           | VM-Format abhängig (VMDK, VHD)  | OCI-Standard, überall lauffähig  |
| Einsatzzweck           | Legacy-Apps, starke Isolation   | Microservices, CI/CD, Cloud      |

## Reflexionsfrage
Container sind keine leichtgewichtigen VMs, weil sie den Kernel des Host-Betriebssystems teilen. VMs virtualisieren die gesamte Hardware (CPU, RAM, Netzwerk) über einen Hypervisor und bringen ein eigenes Betriebssystem mit. Container nutzen Linux-Kernel-Features (Namespaces für Isolation, cgroups für Ressourcen-Limits) und teilen sich den Kernel – deshalb sind sie schneller, leichter, aber weniger isoliert.
