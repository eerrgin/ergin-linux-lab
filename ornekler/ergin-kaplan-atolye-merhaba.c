/* © 2026 Ergin Kaplan
 * Ergin Linux Lab — Ergin Kaplan Atölyesi
 * İlk küçük program: adını okur, harf sayısını yazar.
 */
#include <stdio.h>
#include <string.h>

int main(int argc, char **argv) {
    printf("Ergin Linux Lab — Ergin Kaplan Atölyesi\n");

    if (argc < 2) {
        printf("Yanına adını yaz.\n");
        printf("Örnek: %s Ergin\n", argv[0]);
        return 0;
    }

    printf("Merhaba %s.\n", argv[1]);
    printf("Bu sözcükte %zu bayt var.\n", strlen(argv[1]));

    if (argc > 2) {
        printf("Fazladan %d sözcük duruyor; bu ilk adım yalnız ilkini okur.\n", argc - 2);
    }

    return 0;
}
