async function handleAdd(){
    const bike_name = document.getElementById("bike_name").value
    const description = document.getElementById("description").value
    const company = document.getElementById("company").value
    const engine_power = document.getElementById("engine_power").value
    const price = document.getElementById("price").value
    const image = document.getElementById("image").files[0]

    if(bike_name && description && company && engine_power && price){
        try {
            const formData = new FormData();
            formData.append('bike_name', bike_name);
            formData.append('description', description);
            formData.append('company', company);
            formData.append('engine_power', engine_power);
            formData.append('price', price);
            formData.append('image', image);

            const response = await axios.post(`/api/bike`, formData, {
                headers:{
                    'Content-Type': 'multipart/form-data'
                }
            })
            console.log(response)
            window.location.reload();
        }catch (error){
            console.log(error)
        }
    }
}

async function handleDelete(id, filename){

    try{
        // /api/bike?id=18&filename=bike.png
        const response = await axios.delete(`/api/bike`, {
            params:{
                id: id,
                filename: filename
            }
        });
        console.log(response);
        window.location.reload();
    }catch(err){
       console.log(err);
    }
}