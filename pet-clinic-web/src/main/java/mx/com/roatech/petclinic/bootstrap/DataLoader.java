package mx.com.roatech.petclinic.bootstrap;

import mx.com.roatech.petclinic.map.OwnerMapService;
import mx.com.roatech.petclinic.map.VetMapService;
import mx.com.roatech.petclinic.model.Owner;
import mx.com.roatech.petclinic.model.Vet;
import mx.com.roatech.petclinic.services.VetService;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;
import mx.com.roatech.petclinic.services.OwnerService;

@Component
public class DataLoader implements CommandLineRunner {
    private final OwnerService ownerService;
    private final VetService vetService;

    public DataLoader(OwnerService ownerService, VetService vetService ){
       this.ownerService = ownerService;
       this.vetService = vetService;
    }

    @Override
    public void run(String... args) throws Exception {
        Owner owner1 = new Owner();
        owner1.setId(1L);
        owner1.setFirstName("Juan Carlos");
        owner1.setLastName("De la O");
        ownerService.save(owner1);

        Owner owner2 = new Owner();
        owner2.setId(2L);
        owner2.setFirstName("Brianda Paola");
        owner1.setLastName("Rodriguez Mora");
        ownerService.save(owner2);

        Vet vet1 = new Vet();
        vet1.setId(1L);
        vet1.setFirstName("Isabel");
        vet1.setLastName("Lopez Jimenez");
        vetService.save(vet1);

        Vet vet2 = new Vet();
        vet2.setId(2L);
        vet2.setFirstName("Arturo Roman");
        vet2.setLastName("Zuleta Tovar");
        vetService.save(vet2);

    }
}
