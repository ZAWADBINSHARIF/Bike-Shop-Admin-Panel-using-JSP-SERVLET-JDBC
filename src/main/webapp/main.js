async function handleDelete(id){
    try{
        const response = await axios.delete(`/api/bike?id=${id}`);
        console.log(response);
        window.location.reload();
    }catch(err){
       console.log(err);
    }
}