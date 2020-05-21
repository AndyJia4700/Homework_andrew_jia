

 const selectLocation = function(city, jobs){
    return {
        type: "SWITCH_LOCATTION",
        city,
        jobs
    };
}

window.selectLocation = selectLocation;

export default selectLocation;

