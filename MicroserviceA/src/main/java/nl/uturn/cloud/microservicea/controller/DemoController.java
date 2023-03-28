package nl.uturn.cloud.microservicea.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/demo/v1")
public class DemoController {

    @Value("${spring.profiles.active:}")
    private String activeProfile;

    @Autowired
    public DemoController(){

    }

    @GetMapping(value = "/get-version")
    public String getVersion(){
        return "This is a response from "+ activeProfile;
    }
}
