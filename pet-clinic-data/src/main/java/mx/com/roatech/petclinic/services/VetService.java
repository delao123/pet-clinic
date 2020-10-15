package mx.com.roatech.petclinic.services;

import mx.com.roatech.petclinic.model.Vet;

import java.util.Set;

public interface VetService {
    Vet findById(Long id);
    Vet save(Vet vet);
    Set<Vet>findAll();
}
