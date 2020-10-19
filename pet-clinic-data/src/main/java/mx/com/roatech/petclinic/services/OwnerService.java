package mx.com.roatech.petclinic.services;

import com.sun.xml.bind.v2.model.core.ID;
import mx.com.roatech.petclinic.model.Owner;

import java.util.Set;

public interface OwnerService extends CrudService<Owner, Long> {
    Owner findByLastName(String lastName);
}
