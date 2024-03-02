package com.bike_shop.bike_shop;

import jakarta.servlet.http.Part;

import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.UUID;

public class SaveImageFile {

    public String add(Part part, String fileSaveDirPath, String uploadFolder) {

            String random_UUID = UUID.randomUUID().toString();
            String filename = part.getSubmittedFileName();
            String fileExt = filename.substring(filename.lastIndexOf(".")+1);
            String []allowImgType = {"jpg", "png", "jpeg"};
            String modifiedFilename = filename.replaceAll("." + fileExt, random_UUID) + "." + fileExt;
            fileSaveDirPath = fileSaveDirPath + File.separator + "public"+ File.separator + uploadFolder;

        try {
            if (!(Arrays.asList(allowImgType).contains(fileExt))) {
                throw new IOException("Only jpg, png and jpeg are allowed!");
            }
                File fileSaveDir = new File(fileSaveDirPath);

                if (!fileSaveDir.exists()) {
                    fileSaveDir.mkdirs();
                }

                part.write(fileSaveDirPath  + File.separator + modifiedFilename);
                return modifiedFilename;
            }catch(Exception e){
                System.out.println(e);
                return null;
        }
    }
}
