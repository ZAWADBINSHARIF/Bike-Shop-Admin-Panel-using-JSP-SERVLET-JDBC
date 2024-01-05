<%--
  Created by IntelliJ IDEA.
  User: ZAWAD
  Date: 1/5/2024
  Time: 8:17 PM
  To change this template use File | Settings | File Templates.
--%>
<!-- Modal -->
<div class="modal fade" id="add-bike-modal" tabindex="-1" aria-labelledby="add-bike-modal" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title" id="add-bike-modal-label">Add New Bike</h3>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">

                <div class="mb-3">
                    <label for="bike_name" class="form-label">Name</label>
                    <input required type="text" class="form-control" id="bike_name" name="bike_name"
                           placeholder="Bike name">
                </div>
                <div class="mb-3">
                    <label for="description" class="form-label">Description</label>
                    <input required type="text" class="form-control" id="description" name="description"
                           placeholder="Description">
                </div>
                <div class="mb-3">
                    <label for="company" class="form-label">Company</label>
                    <input required type="text" class="form-control" id="company" name="company"
                           placeholder="Company name">
                </div>
                <div class="mb-3">
                    <label for="engine_power" class="form-label">Engine power</label>
                    <input required type="number" class="form-control" id="engine_power" name="engine_power"
                           placeholder="Engine power">
                </div>
                <div class="mb-3">
                    <label for="price" class="form-label">Price</label>
                    <input required type="number" class="form-control" id="price" name="price" placeholder="Price">
                </div>
                <div class="mb-3">
                    <label for="image" class="form-label">Image</label>
                    <input required type="file" class="form-control" id="image" name="image" placeholder="image">
                </div>

            </div>
            <div class="modal-footer">
                <%--                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>--%>
                <button type="submit" class="btn btn-outline-secondary">Add</button>
            </div>
        </div>
    </div>
</div>
